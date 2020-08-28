/* i/n/serial.h
**
*/
    /*  Noun serialization. All noun arguments RETAINED.
    */

      /* u3s_jam_fib(): jam without atom allocation.
      **
      **   returns atom-suitable words, and *bit_w will have
      **   the length (in bits). return should be freed with u3a_wfree().
      */
        c3_w*
        u3s_jam_fib(u3_noun a, c3_w* bit_w);

      /* u3s_jam_met(): measure a noun for jam, calculating backrefs
      */
        c3_d
        u3s_jam_met(u3_noun a, u3p(u3h_root)* bak_p);

      /* u3s_jam_buf(): jam [a] into [buf_w], without allocation
      **
      **   using backrefs in [bak_p], as computed by u3s_jam_met
      **   can only encode up to c3_w bits
      */
        void
        u3s_jam_buf(u3_noun a, u3p(u3h_root) bak_p, c3_w* buf_w);

      /* u3s_jam_file(): jam [a] into a file, overwriting
      */
        c3_o
        u3s_jam_file(u3_noun a, c3_c* pas_c);

      /* u3s_jam_xeno(): jam with off-loom buffer (re-)allocation.
      */
        c3_d
        u3s_jam_xeno(u3_noun a, c3_d* len_d, c3_y** byt_y);

      /* u3s_cue(): cue [a]
      */
        u3_noun
        u3s_cue(u3_atom a);

      /* u3s_cue_xeno(): cue onto the loom, bookkeeping off the loom.
      */
        u3_noun
        u3s_cue_xeno(c3_d len_d, const  c3_y* byt_y);

      /* u3s_cue_bytes(): cue bytes onto the loom.
      */
        u3_noun
        u3s_cue_bytes(c3_d len_d, const c3_y* byt_y);

      /* u3s_cue_atom(): cue atom.
      */
        u3_noun
        u3s_cue_atom(u3_atom a);
