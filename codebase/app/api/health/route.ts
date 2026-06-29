import { NextResponse } from 'next/server';
import { createAdminClient } from '@/lib/supabase/server';

export async function GET() {
  const checks: Record<string, string> = {
    timestamp: new Date().toISOString(),
    status: 'ok',
  };

  try {
    // Check Supabase connection
    const supabase = createAdminClient();
    const { error } = await supabase.from('organizations').select('id').limit(1);
    
    if (error) {
      checks.database = 'error: ' + error.message;
      checks.status = 'degraded';
    } else {
      checks.database = 'connected';
    }
  } catch (err) {
    checks.database = 'error: ' + (err instanceof Error ? err.message : 'unknown');
    checks.status = 'degraded';
  }

  const statusCode = checks.status === 'ok' ? 200 : 503;

  return NextResponse.json(checks, { status: statusCode });
}
