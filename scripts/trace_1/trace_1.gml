function trace_1(b, v, d)
{    
    if (is_array(v))
    {
        if (d > 8)
        {
            buffer_write(b, buffer_text, "[...]");
        }
        else if (array_height_2d(v) > 1)
        {
            buffer_write(b, buffer_text, string(v));
        }
        else
        {
            buffer_write(b, buffer_u8, 91);
            var n = array_length_1d(v);
            
            for (var i = 0; i < n; i++)
            {
                if (i)
                    buffer_write(b, buffer_text, ", ");
                
                trace_1(b, v[i], d);
            }
            
            buffer_write(b, buffer_u8, 93);
        }
    }
    else if (is_string(v))
    {
        buffer_write(b, buffer_u8, 96);
        buffer_write(b, buffer_text, string(v));
        buffer_write(b, buffer_u8, 96);
    }
    else
    {
        buffer_write(b, buffer_text, string(v));
    }
}
