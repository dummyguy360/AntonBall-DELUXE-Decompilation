#define cmn_menu_init
global.f_cmn_menu_call_funcs_cf = asset_get_index("cmn_menu_call_funcs_cf");
global.f_cmn_menu_call_funcs_cf1 = asset_get_index("cmn_menu_call_funcs_cf1");
global.f_cmn_menu_call_funcs_cf2 = asset_get_index("cmn_menu_call_funcs_cf2");
global.f_cmn_menu_call_funcs_cf3 = asset_get_index("cmn_menu_call_funcs_cf3");
global.f_cmn_menu_call_funcs_cf4 = asset_get_index("cmn_menu_call_funcs_cf4");
global.f_cmn_menu_call_funcs_cf5 = asset_get_index("cmn_menu_call_funcs_cf5");
global.f_cmn_menu_call_funcs_cf6 = asset_get_index("cmn_menu_call_funcs_cf6");
global.f_cmn_menu_call_funcs_cf7 = asset_get_index("cmn_menu_call_funcs_cf7");
global.f_cmn_menu_call_funcs_cf8 = asset_get_index("cmn_menu_call_funcs_cf8");
global.f_cmn_menu_init_select_cache_lf = asset_get_index("cmn_menu_init_select_cache_lf");
global.f_cmn_menu_get_height_lf = asset_get_index("cmn_menu_get_height_lf");
global.f_cmn_menu_get_height_until_lf = asset_get_index("cmn_menu_get_height_until_lf");
global.f_cmn_menu_dispatch_lf = asset_get_index("cmn_menu_dispatch_lf");
global.f_cmn_menu_update_set_hash = asset_get_index("cmn_menu_update_set_hash");
global.f_cmn_menu_input_lf = asset_get_index("cmn_menu_input_lf");
global.g_cmn_menu_item_args_fill = array_create(256, undefined);
global.g_cmn_menu_current_menu = undefined;
global.g_cmn_menu_current_active = 0;
global.g_cmn_menu_current_index = -1;
global.g_cmn_menu_current_hash = undefined;
global.g_cmn_menu_trigger_index = -1;
global.g_cmn_menu_result = undefined;
global.g_cmn_menu_max_call_func_args = 8;
global.g_cmn_menu_call_funcs = [global.f_cmn_menu_call_funcs_cf, global.f_cmn_menu_call_funcs_cf1, global.f_cmn_menu_call_funcs_cf2, global.f_cmn_menu_call_funcs_cf3, global.f_cmn_menu_call_funcs_cf4, global.f_cmn_menu_call_funcs_cf5, global.f_cmn_menu_call_funcs_cf6, global.f_cmn_menu_call_funcs_cf7, global.f_cmn_menu_call_funcs_cf8];
global.g_cmn_menu_last_hash_cache = [];
global.g_cmn_menu_last_hash_map = ds_map_create();
global.g_cmn_menu_std_haxe_boot_isJS = false;

#define cmn_menu_init_select_cache
var this = argument[0];
array_set(this, 3, 1);
var l_n = this[6];

if (!global.g_cmn_menu_std_haxe_boot_isJS)
    cmn_menu_std_haxe_boot_wset(this[2], l_n - 1, 0);

var l_prev = global.g_cmn_menu_current_menu;
global.g_cmn_menu_current_menu = this;
cmn_menu_dispatch(this, 6, global.f_cmn_menu_init_select_cache_lf);
global.g_cmn_menu_current_menu = l_prev;

#define cmn_menu_init_select_cache_lf
var l_i = argument[0];
var l_r = argument[1];

if (l_r == undefined)
    l_r = 1;

cmn_menu_std_haxe_boot_wset(global.g_cmn_menu_current_menu[2], l_i, l_r);
return 0;

#define cmn_menu_call_funcs_cf
return script_execute(argument[0]);

#define cmn_menu_call_funcs_cf1
var l_ai1 = argument[1];
var l_i1 = argument[2];
return script_execute(argument[0], l_ai1[l_i1]);

#define cmn_menu_call_funcs_cf2
var l_ai2 = argument[1];
var l_i2 = argument[2];
return script_execute(argument[0], l_ai2[l_i2], l_ai2[l_i2 + 1]);

#define cmn_menu_call_funcs_cf3
var l_ai3 = argument[1];
var l_i3 = argument[2];
return script_execute(argument[0], l_ai3[l_i3], l_ai3[l_i3 + 1], l_ai3[l_i3 + 2]);

#define cmn_menu_call_funcs_cf4
var l_ai4 = argument[1];
var l_i4 = argument[2];
return script_execute(argument[0], l_ai4[l_i4], l_ai4[l_i4 + 1], l_ai4[l_i4 + 2], l_ai4[l_i4 + 3]);

#define cmn_menu_call_funcs_cf5
var l_ai5 = argument[1];
var l_i5 = argument[2];
return script_execute(argument[0], l_ai5[l_i5], l_ai5[l_i5 + 1], l_ai5[l_i5 + 2], l_ai5[l_i5 + 3], l_ai5[l_i5 + 4]);

#define cmn_menu_call_funcs_cf6
var l_ai6 = argument[1];
var l_i6 = argument[2];
return script_execute(argument[0], l_ai6[l_i6], l_ai6[l_i6 + 1], l_ai6[l_i6 + 2], l_ai6[l_i6 + 3], l_ai6[l_i6 + 4], l_ai6[l_i6 + 5]);

#define cmn_menu_call_funcs_cf7
var l_ai7 = argument[1];
var l_i7 = argument[2];
return script_execute(argument[0], l_ai7[l_i7], l_ai7[l_i7 + 1], l_ai7[l_i7 + 2], l_ai7[l_i7 + 3], l_ai7[l_i7 + 4], l_ai7[l_i7 + 5], l_ai7[l_i7 + 6]);

#define cmn_menu_call_funcs_cf8
var l_ai8 = argument[1];
var l_i8 = argument[2];
return script_execute(argument[0], l_ai8[l_i8], l_ai8[l_i8 + 1], l_ai8[l_i8 + 2], l_ai8[l_i8 + 3], l_ai8[l_i8 + 4], l_ai8[l_i8 + 5], l_ai8[l_i8 + 6], l_ai8[l_i8 + 7]);

#define cmn_menu_create
var this = array_create(10);
array_set(this, 9, undefined);
array_set(this, 8, undefined);
array_set(this, 6, 0);
array_set(this, 5, -1);
array_set(this, 4, []);
array_set(this, 3, 0);
array_set(this, 2, []);
array_set(this, 1, 0);
array_set(this, 0, []);
array_set(this, 7, argument[0]);
return this;

#define cmn_menu_add
var l_q = global.g_cmn_menu_current_menu;

if (l_q == undefined)
    show_error("Not in a menu!", 0);

var l_ti = global.g_cmn_menu_trigger_index;

if (l_ti >= 0)
    return array_set_post(l_q, 6, array_get(l_q, 6) + 1) == l_ti;

var l_n = argument_count - 1;

if (l_n >= 8)
    show_error("Too many arguments!", 0);

var l_args1 = l_q[0];
var l_pos = l_q[1];
array_set(l_q, 1, l_pos + l_n + 2);

if (!global.g_cmn_menu_std_haxe_boot_isJS)
    cmn_menu_std_haxe_boot_wset(l_q[0], l_q[1] - 1, 0);

array_set(l_args1, l_pos++, argument[0]);
array_set(l_args1, l_pos++, l_n);

for (var l_i = 0; l_i < l_n; l_i++)
    array_set(l_args1, l_pos++, argument[l_i + 1]);

array_set_pre(l_q, 6, array_get(l_q, 6) + 1);
return 0;

#define cmn_menu_can_select
var this = argument[0];
var l_i = argument[1];
var l_n = this[6];

if (l_n <= 0)
    return 0;

if (!this[3])
    cmn_menu_init_select_cache(this);

l_i %= l_n;

if (l_i < 0)
    l_i += l_n;

return cmn_menu_std_haxe_boot_wget(this[2], l_i);

#define cmn_menu_draw
var this = argument[0];
var l_prev = global.g_cmn_menu_current_menu;
global.g_cmn_menu_current_menu = this;
global.g_cmn_menu_x = argument[1];
global.g_cmn_menu_y = argument[2];
cmn_menu_dispatch(this, 3);
global.g_cmn_menu_x = undefined;
global.g_cmn_menu_y = undefined;
global.g_cmn_menu_current_menu = l_prev;

#define cmn_menu_dispatch
var this = argument[0];
var l_event = argument[1];
var l_post;

if (argument_count > 2)
    l_post = argument[2];
else
    l_post = undefined;

global.g_cmn_menu_current_event = l_event;
var l_post1 = (l_post != undefined) ? l_post : global.f_cmn_menu_dispatch_lf;
var l_i = 0;
var l_ia = this[0];
var l_cf = global.g_cmn_menu_call_funcs;
var l_k = 0;
var l_setHash = l_event != 1;

repeat (this[6])
{
    var l_f = l_ia[l_i++];
    var l_n = l_ia[l_i++];
    global.g_cmn_menu_current_index = l_k;
    global.g_cmn_menu_current_active = l_k == this[5];
    
    if (l_setHash)
        global.g_cmn_menu_current_hash = cmn_menu_std_haxe_boot_wget(this[4], l_k);
    
    if (script_execute(l_post1, l_k, script_execute(l_cf[l_n], l_f, l_ia, l_i)))
        return 1;
    
    l_i += l_n;
    l_k++;
}

return 0;

#define cmn_menu_dispatch_lf
return 0;

#define cmn_menu_update
var this = argument[0];
var l_rebuild;

if (argument_count > 1)
    l_rebuild = argument[1];
else
    l_rebuild = 1;

var l__gthis = this;

if (!l_rebuild)
{
    var l_prev = global.g_cmn_menu_current_menu;
    global.g_cmn_menu_current_menu = this;
    cmn_menu_dispatch(l__gthis, 2);
    global.g_cmn_menu_current_menu = l_prev;
    return 0;
}

var l_prev1 = global.g_cmn_menu_current_menu;
global.g_cmn_menu_current_menu = this;
var l_prevCount = l__gthis[6];
array_copy(global.g_cmn_menu_last_hash_cache, 0, l__gthis[4], 0, l_prevCount);
var l_args1 = l__gthis[0];
var l_fill = global.g_cmn_menu_item_args_fill;
var l_pos = 0;
var l_len = l__gthis[1];

while (l_pos < l_len)
{
    array_copy(l_args1, l_pos, l_fill, 0, min(256, l_len - l_pos));
    l_pos += 256;
}

array_set(l__gthis, 1, 0);
array_set(l__gthis, 6, 0);
global.g_cmn_menu_current_event = 0;
array_set(l__gthis, 3, 0);
array_set(l__gthis, 8, undefined);

if (is_method(l__gthis[7]))
    l__gthis[7]();
else
    script_execute(l__gthis[7]);

ds_map_clear(global.g_cmn_menu_last_hash_map);
cmn_menu_dispatch(l__gthis, 1, global.f_cmn_menu_update_set_hash);

if (l__gthis[5] < 0)
{
    cmn_menu_shift_select(l__gthis, 1);
}
else
{
    var l_prevSelect = l__gthis[5];
    
    if (l_prevSelect >= l_prevCount)
        l_prevSelect = -1;
    
    var l_nextHashCache = l__gthis[4];
    
    while (l_prevSelect >= 0)
    {
        var l_i1 = cmn_menu_std_array_hx_indexOf(l_nextHashCache, global.g_cmn_menu_last_hash_cache[l_prevSelect], 0);
        
        if (l_i1 >= 0)
        {
            if (l_prevSelect < l__gthis[5])
            {
                array_set(l__gthis, 5, l_i1);
                
                if (!cmn_menu_can_select(l__gthis, l_i1))
                    cmn_menu_shift_select(l__gthis, 1);
            }
            else
            {
                array_set(l__gthis, 5, l_i1);
            }
            
            break;
        }
        
        l_prevSelect--;
    }
    
    if (l_prevSelect < 0)
    {
        array_set(l__gthis, 5, -1);
        cmn_menu_shift_select(l__gthis, 1);
    }
}

cmn_menu_dispatch(l__gthis, 2);
global.g_cmn_menu_current_menu = l_prev1;

#define cmn_menu_update_set_hash
var l_k = argument[0];
var l_r = argument[1];

if (!is_string(l_r))
    l_r = "";

var l_i = ds_map_find_value(global.g_cmn_menu_last_hash_map, l_r);

if (l_i != undefined)
{
    var l_value = ++l_i;
    ds_map_set(global.g_cmn_menu_last_hash_map, l_r, l_value);
    l_r += ("" + string(l_i));
}
else
{
    ds_map_set(global.g_cmn_menu_last_hash_map, l_r, 0);
}

var l_cache = global.g_cmn_menu_current_menu[4];
array_set(l_cache, l_k, l_r);
return 0;

#define cmn_menu_trigger
var l_val;

if (argument_count > 0)
    l_val = argument[0];
else
    l_val = undefined;

global.g_cmn_menu_result = l_val;
return 1;

#define cmn_menu_input
var this = argument[0];
var l_x;

if (argument_count > 1)
    l_x = argument[1];
else
    l_x = 0;

var l_y;

if (argument_count > 2)
    l_y = argument[2];
else
    l_y = 0;

var l_prev = global.g_cmn_menu_current_menu;
global.g_cmn_menu_current_menu = this;
global.g_cmn_menu_result = undefined;
global.g_cmn_menu_trigger_index = -1;
global.g_cmn_menu_x = l_x;
global.g_cmn_menu_y = l_y;
cmn_menu_dispatch(this, 4, global.f_cmn_menu_input_lf);

if (global.g_cmn_menu_trigger_index >= 0)
{
    var l_c = global.g_cmn_menu_current_menu;
    var l_n = l_c[6];
    array_set(l_c, 6, 0);
    global.g_cmn_menu_current_event = 0;
    script_execute(l_c[7]);
    array_set(l_c, 6, l_n);
    global.g_cmn_menu_trigger_index = -1;
    global.g_cmn_menu_result = undefined;
}

global.g_cmn_menu_x = undefined;
global.g_cmn_menu_y = undefined;
global.g_cmn_menu_current_menu = l_prev;

#define cmn_menu_input_lf
if (argument[1])
{
    global.g_cmn_menu_trigger_index = argument[0];
    return 1;
}
else
{
    return 0;
}

#define cmn_menu_std_haxe_boot_wget
var l_arr = argument[0];
var l_index = argument[1];
return l_arr[l_index];

#define cmn_menu_std_haxe_boot_wset
var l_arr = argument[0];
var l_index = argument[1];
array_set(l_arr, l_index, argument[2]);

#define cmn_menu_std_array_hx_indexOf
var l_arr = argument[0];
var l_i = argument[2];
var l_len = array_length_1d(l_arr);

if (l_i < 0)
{
    l_i += l_len;
    
    if (l_i < 0)
        l_i = 0;
}

while (l_i < l_len)
{
    if (l_arr[l_i] == argument[1])
        return l_i;
    
    l_i++;
}

return -1;

#define cmn_menu_shift_select
var this = argument[0];
var l_delta = argument[1];
var l_wrap;

if (argument_count > 2)
    l_wrap = argument[2];
else
    l_wrap = 0;

var l_n = this[6];

if (l_n == 0 || l_delta == 0)
    return 0;

var l_i = this[5];

if (!this[3])
    cmn_menu_init_select_cache(this);

var l_sl = this[2];
var l_d = sign(l_delta);
var l_t = abs(l_delta) | 0;

if (l_wrap)
{
    repeat (l_n)
    {
        l_i = (l_i + l_d) % l_n;
        
        if (l_i < 0)
            l_i += l_n;
        
        if (l_sl[l_i] == 0)
            continue;
        
        if (--l_t <= 0)
            break;
    }
    
    if (l_t <= 0 && this[5] != l_i)
    {
        array_set(this, 5, l_i);
        return 1;
    }
    else
    {
        return 0;
    }
}
else
{
    var l_next = l_i;
    
    repeat (l_n)
    {
        l_i += l_d;
        
        if (l_i < 0 || l_i >= l_n)
            break;
        
        if (l_sl[l_i] == 0)
            continue;
        
        l_next = l_i;
        
        if (--l_t <= 0)
            break;
    }
    
    if (l_next != this[5])
    {
        array_set(this, 5, l_next);
        return 1;
    }
    else
    {
        return 0;
    }
}

#define cmn_menu_set_custom
var this = argument[0];
array_set(this, 9, argument[1]);

#define cmn_menu_set_height
var this = argument[0];
array_set(this, 8, argument[1]);

#define cmn_menu_set_select
var this = argument[0];
array_set(this, 5, argument[1]);

#define cmn_menu_get_select
var this = argument[0];
return this[5];

#define cmn_menu_get_custom
var this = argument[0];
return this[9];

#define cmn_menu_get_hash
var this = argument[0];
var l_i = argument[1];

if (l_i >= 0 && l_i < this[6])
    return cmn_menu_std_haxe_boot_wget(this[4], l_i);
else
    return "";

#define cmn_menu_get_count
var this = argument[0];
return this[6];

#define cmn_menu_get_current_count
return global.g_cmn_menu_current_menu[6];

#define cmn_menu_get_current_custom
return global.g_cmn_menu_current_menu[9];

#define cmn_menu_get_current_select
return global.g_cmn_menu_current_menu[5];

#define cmn_menu_get_height
var this = argument[0];
var l__gthis = this;

if (this[8] == undefined)
{
    var l_prev = global.g_cmn_menu_current_menu;
    global.g_cmn_menu_current_menu = this;
    array_set(l__gthis, 8, 0);
    cmn_menu_dispatch(l__gthis, 5, global.f_cmn_menu_get_height_lf);
    global.g_cmn_menu_current_menu = l_prev;
}

return this[8];

#define cmn_menu_get_height_lf
var l_r = argument[1];

if (l_r != undefined)
    array_set(global.g_cmn_menu_current_menu, 8, array_get(global.g_cmn_menu_current_menu, 8) + l_r);

return 0;

#define cmn_menu_get_height_until
var this = argument[0];
var l_prev = global.g_cmn_menu_current_menu;
global.g_cmn_menu_current_menu = this;
var l_old_result = global.g_cmn_menu_result;
global.g_cmn_menu_result = 0;
global.g_cmn_menu_get_height_until_index = argument[1];
cmn_menu_dispatch(this, 5, global.f_cmn_menu_get_height_until_lf);
var l_r1 = global.g_cmn_menu_result;
global.g_cmn_menu_result = l_old_result;
global.g_cmn_menu_current_menu = l_prev;
return l_r1;

#define cmn_menu_get_height_until_lf
var l_r = argument[1];

if (argument[0] >= global.g_cmn_menu_get_height_until_index)
    return 1;

if (l_r != undefined)
    global.g_cmn_menu_result += l_r;

return 0;