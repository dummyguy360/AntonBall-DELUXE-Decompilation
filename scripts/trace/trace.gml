function trace()
{
    var b = global.trace_buf;
    buffer_seek(b, buffer_seek_start, 0);
    
    for (var i = 0; i < argument_count; i++)
    {
        if (i)
            buffer_write(b, buffer_u8, 32);
        
        trace_1(b, argument[i], 0);
    }
    
    buffer_write(b, buffer_u8, 0);
    buffer_seek(b, buffer_seek_start, 0);
    var s = buffer_read(b, buffer_string);
    show_debug_message(s);
    return s;
}
