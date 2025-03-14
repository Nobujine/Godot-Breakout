GDPC                �                                                                         T   res://.godot/exported/133200997/export-065de61523f0b76d41794e3a10ac1cb7-block.scn   �	      �      W5�v^d���k    P   res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn�%      Z      g؋���J��bU�B��    P   res://.godot/exported/133200997/export-5d2f649bfda0e984c5f95c948cc9f360-ui.scn  `;      �      �Pj���'����    T   res://.godot/exported/133200997/export-7caf58047a0eb41e8de9e6a27d3cd1ad-bottom.scn         �      P��4`��"u�����    T   res://.godot/exported/133200997/export-90e1ff3baa03524a506ff0f7a9d78dcf-Player.scn  04      @      Y��o��|��4U�
    P   res://.godot/exported/133200997/export-f46c71a9b7f0892a5bf2bd9cf0943875-ball.scnP      �      (]�>l��\��O�E�    ,   res://.godot/global_script_class_cache.cfg  �C             ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  �G      �       '���&�ŉ+�$�g�,       res://Bottom.gd �      g      �³��G�D ���3Ȟ�       res://Player.gd �1      I      �*V^Ø���x
��       res://Player.tscn.remap �B      c       ^����[���:c��&       res://ball.gd           N      �*���a�A���b�       res://ball.tscn.remap    A      a       ;�#$�#ui�+�9KY)       res://block.gd  @      U      ���'���1��ur��       res://block.tscn.remap  �A      b       ��&[��	"ʽF�       res://bottom.tscn.remap  B      c       �G#x�	��P�[���0�       res://icon.svg  �C      �      C��=U���^Qu��U3       res://icon.svg.import   �"      �       Ly��7�z<bt1       res://main.gd   P#      -      N��m3��KA��'J       res://main.tscn.remap   pB      a       �J�Sw� ������       res://project.binary`H      9      .-;��qm*_7�ȭ�u       res://ui.gd p9      �      J �h�}�R�Ө�[ic       res://ui.tscn.remap PC      _       �B��H��p����MW    extends RigidBody2D

var velocity
@export var ball_speed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	set_linear_damp(-0.1)
	velocity = Vector2(1,1) # x+1 = right, y+1 = down
	velocity = velocity.normalized() * ball_speed
	
	#apply_central_impulse(velocity)
	#state.apply_impulse(velocity)
	#assign impulse

func start():
	$Start_Timer.start()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	apply_central_impulse(velocity)
	pass # Replace with function body.
'�RSRC                    PackedScene            ��������                                            
      resource_local_to_scene    resource_name 	   friction    rough    bounce 
   absorbent    script    custom_solver_bias    radius 	   _bundled       Script    res://ball.gd ��������      local://PhysicsMaterial_2blik �         local://CircleShape2D_f16lj �         local://PackedScene_sxbdv          PhysicsMaterial                      �?         CircleShape2D            �A         PackedScene    	      	         names "         Ball    physics_material_override    gravity_scale    max_contacts_reported    contact_monitor    script    ball_speed    RigidBody2D 
   ColorRect    offset_left    offset_top    offset_right    offset_bottom    CollisionShape2D    shape    Start_Timer 	   one_shot    Timer    _on_body_entered    body_entered    _on_timer_timeout    timeout    	   variants    	                                             �       ��     �A               node_count             nodes     4   ��������       ����                                                          ����   	      
                                    ����                           ����                   conn_count             conns                                                               node_paths              editable_instances              version             RSRC�Sg��extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	hide()
	$CollisionShape2D.set_deferred("disabled", true) # Turn off
	
6��r�,i��JRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    script/source    custom_solver_bias    size    script 	   _bundled           local://GDScript_qqisj `         local://RectangleShape2D_m2ym0 �         local://PackedScene_ospw5 �      	   GDScript          F  extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	queue_free()
	pass # Replace with function body.
    RectangleShape2D       
      B   B         PackedScene          	         names "         Block    max_contacts_reported    contact_monitor 
   can_sleep    freeze    freeze_mode    script    RigidBody2D 
   ColorRect    anchors_preset    anchor_left    anchor_top    anchor_right    anchor_bottom    offset_left    offset_top    offset_right    offset_bottom    grow_horizontal    grow_vertical    CollisionShape2D    shape    _on_body_entered    body_entered    	   variants    
                                            ?     ��     �A                     node_count             nodes     9   ��������       ����                                                           ����   	      
                                                                              ����      	             conn_count             conns                                       node_paths              editable_instances              version             RSRC��z��extends Area2D

signal gameover

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print('Game Over')
	gameover.emit()
	pass # Replace with function body.
�]/^H-�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    a    b    script 	   _bundled       Script    res://Bottom.gd ��������      local://SegmentShape2D_71v3d S         local://PackedScene_fyyc1 �         SegmentShape2D       
     �C  4D   
         4D         PackedScene          	         names "         Bottom    script    Area2D    CollisionShape2D    shape    _on_body_shape_entered    body_shape_entered    	   variants                                 node_count             nodes        ��������       ����                            ����                   conn_count             conns                                       node_paths              editable_instances              version             RSRC�RǸ�1�S��rm�GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ �J�2[s�_R,[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cwevubjbgcc01"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 �����Ʌ�����Җextends Node

@export var ball_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_bottom_gameover():
	pass
	$Ball.queue_free() # Delete Ball
	$UI/Start_Button.show()
	$UI/Label.text = 'Try Again?'
	$UI/Label.show()
	

func _on_ui_start():
	var Ball = ball_scene.instantiate()
	Ball.transform = $Ball_Spawn_Point.transform
	add_child(Ball)
	$Ball.start()
	
d�RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    a    b    script 	   _bundled       Script    res://main.gd ��������   PackedScene    res://ball.tscn q{�<��o3   PackedScene    res://ui.tscn 1��b   PackedScene    res://Player.tscn ���4�+O   Script    res://Bottom.gd ��������   PackedScene    res://block.tscn Ӂ�Y���r      local://SegmentShape2D_prdft �         local://SegmentShape2D_07m2h �         local://SegmentShape2D_ydy68          local://SegmentShape2D_r0rxg A         local://PackedScene_gxjdj �         SegmentShape2D       
     �C       
     �C  4D         SegmentShape2D       
         4D         SegmentShape2D       
     �C             SegmentShape2D       
      A  4D   
     �C  4D         PackedScene          	         names "   #      Main    script    ball_scene    Node    UI    Player 	   position    Walls    StaticBody2D    Right    shape    CollisionShape2D    Left    Top    Bottom_Wall    light_mask    Area2D    Ball_Spawn_Point 	   Marker2D    Node2D    Block    Block2    Block3    Block4    Block5    Block6    Block7    Middle    Bottom    _on_ui_start    start    _on_body_entered    body_entered    _on_bottom_gameover 	   gameover    	   variants                                            
     bC @"D                                                    
     �B  �C
     pC  �B         
     @�    
      �    
     ��    
     �B    
      C    
     @C    
     pC  �B
     pC  0C      node_count    "         nodes     ,  ��������       ����                            ���                      ���                                 ����                  	   ����   
                       ����   
                       ����   
                        ����            	                    ����   
   
                     ����                           ����             
       ���                   
       ���                   
       ���                   
       ���              
       ���                   
       ���                   
       ���                                 ����                    ���                          ���                          ���                          ���                     ���                          ���                          ���                                 ����                    ���                          ���                          ���                          ���                     ���                          ���                          ���                         conn_count             conns                                                               "   !                    node_paths              editable_instances              version             RSRCt��Yextends CharacterBody2D

signal hit
var screen_size
@export var move_speed = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("right"):
		position.x += move_speed
	if Input.is_action_pressed('left'):
		position.x -= move_speed
	
	position = position.clamp(Vector2.ZERO, screen_size)


func _on_body_entered(body):
	print('Paddle Hit')
	hit.emit()
�b0��TpRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://Player.gd ��������      local://RectangleShape2D_maj81 R         local://PackedScene_4v73v �         RectangleShape2D       
     C  �A         PackedScene          	         names "         Player    script    move_speed    CharacterBody2D 
   ColorRect    anchors_preset    anchor_left    anchor_top    anchor_right    anchor_bottom    offset_left    offset_top    offset_right    offset_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    size_flags_vertical    CollisionShape2D 	   position    shape    	   variants                                   ?     ��      �     �B      A            
      �                    node_count             nodes     7   ��������       ����                                  ����                           	      
                                       	      	                     ����      
                   conn_count              conns               node_paths              editable_instances              version             RSRCextends CanvasLayer

signal start

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Start_Button.visible and Input.is_action_pressed("Start"):
		start_game()
	pass

func start_game():
	$Start_Button.hide()
	$Label.hide()
	start.emit()

func _on_start_button_pressed():
	start_game()
	pass # Replace with function body.
�H�vRSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://ui.gd ��������      local://PackedScene_060o4          PackedScene          	         names "         UI    script    CanvasLayer    Label    anchors_preset    anchor_left    anchor_top    anchor_right    anchor_bottom    offset_left    offset_top    offset_right    offset_bottom    grow_horizontal    grow_vertical $   theme_override_font_sizes/font_size    text    horizontal_alignment    vertical_alignment    Start_Button    Button    _on_start_button_pressed    pressed    	   variants                             ?     �     6�     C     6B         @      
   Breakout!                  �?     *�     p�     *B     ;�                    Start       node_count             nodes     O   ��������       ����                            ����                                 	      
                                       	      
      
                     ����                                 	      
                                                    conn_count             conns                                      node_paths              editable_instances              version             RSRC�NI�T����<{[remap]

path="res://.godot/exported/133200997/export-f46c71a9b7f0892a5bf2bd9cf0943875-ball.scn"
d&j29޲�0S��}�[remap]

path="res://.godot/exported/133200997/export-065de61523f0b76d41794e3a10ac1cb7-block.scn"
I�^~��\1 �D[remap]

path="res://.godot/exported/133200997/export-7caf58047a0eb41e8de9e6a27d3cd1ad-bottom.scn"
Š��nGח2�[remap]

path="res://.godot/exported/133200997/export-3070c538c03ee49b7677ff960a3f5195-main.scn"
��SpD*��D�yS��R[remap]

path="res://.godot/exported/133200997/export-90e1ff3baa03524a506ff0f7a9d78dcf-Player.scn"
����8T�Z���[remap]

path="res://.godot/exported/133200997/export-5d2f649bfda0e984c5f95c948cc9f360-ui.scn"
`list=Array[Dictionary]([])
-��9�<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
 =9^�D����   q{�<��o3   res://ball.tscnӁ�Y���r   res://block.tscn/p"���B_   res://bottom.tscn���x�W   res://icon.svg7U�*Q�"   res://main.tscn���4�+O   res://Player.tscn1��b   res://ui.tscn�$��]~t/��+dECFG      application/config/name         Breakout   application/run/main_scene         res://main.tscn    application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      �  #   display/window/size/viewport_height      �  
   input/left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/Start�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode       	   key_label             unicode           echo          script      #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility��x;�