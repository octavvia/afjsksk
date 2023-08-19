function maxRunTime(n: number, batteries: number[]): number {
    let l = 1, r = 0;
    for ( let i = 0; i < batteries.length; i++ ) r += batteries[ i ];
    r = Math.floor( r / n );
    while ( l < r ) {
        const m = Math.ceil( ( l + r ) / 2 );
        let extra = 0;
        for ( const b of batteries ) extra += b < m ? b : m;
        if ( extra >= m * n ) l = m
        else r = m - 1;
    }
    return l;
};