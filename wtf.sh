#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYf�X� ���5�	�����������B���d@ 00� `+��֕����/��S]wHٳ���o\uWo����ȓ�J
�������ںٚ���=Y�@�@��t�l9̮�T-�C���l��gt�Z5#Z۶�xJ  �A����)�4z)�S�2'�~T�M!����   ��i�@$����I����24�M4  ���h   b&�����O���#@=@4  z �@  &�A413D4��OԏSɨz��=M4bA��     D�&HM&���	�?J3�ȧ��CPhzi&@z� ��4$  F�6������G���L�=�H 46I��	���́�1�DDG��뇞X��<=�.�-*�=އ�ͷKc���_�vn�ݭ�c�P�~%�HBT^)©�8Ȃ]*k�w5a�W96�;���M�E���V����*�Vz�UXqH�.9~%��gp���~W���cv=�X@^�����#]
��С��nZf��G���U�nT-�nc�wDyֶ�<*�Y?V.����`&|�|yi~��[
���~6��|��J �q�Gj5=ݪ��0a�簅Q�N��K��3Ʌr��u���heԍȓ<�Vz���<R��B�!�F((��gh�l��깙!Ddn�|1���W��'��c�8˃�Q� ��B�:q>�*�
!B�ضN>��薧Rc8�.��,���\�=?@�ч=�G��SY��٧m7Q1��
Y�^<;�@�bޟ�*��ϳ��a���x{aa�o�N�e��qjcL��ʌ�c�#���{	Oϱ�l��4��v^'^������2�m��MFSW�&E������G��8ke��aEB�{E�G�bW,(��_�.LvfBZ��-[,rg�\][�&7�T�\7�ś)&=]�/c3��Ӵ�%�!*��u
]�ݗ��fz�g�L��׶p6�Q����~�{�~c��u�=.���� &pE۷!��!��צxC
�![
�f!�,��|�2�aٌ]p�mr�����wx�o��ulV���)`몯]g81�2�"�S>�^71�R9?.���>��4��6��IZ�Sy�p��z�����޺�y�=|����/5�&6D��`)u�|��1 ���s2Q��B���1��O��جjP!@ �*�)��`p��͕G���3%�R���u���ɂ�-����m7�b�<M����{�b�U{�rk��UrF���m���i��Y�_tG�> �Al����Cɋw�֗41���ʐ�23pD���-�VE�� �ƒБ�M�F�gt~g�>���R�O��靰�p��!�v��`�m�n����A���d���0�ە�b�p�������T����UUC*0®2�f�t�R)�\8c^�e'X�JR���|��T<	�(�/�ٮ�t�Vk�����m�IG���S�FA��j�-��W�􉨭�6AX�v�jI�5k	�c�l;���P����/cd��M"Y��l��qG��q�cf&^�z%��jf�b��-��\�0"f��[�6�_3mr���0�py�	#v��2~����FiKpO��[v4S"x^Tv��w1��
�:6i 1�OQ2ޭȆ���q �_�Յ���N�<4b�����8x�,�E��Kȳ
�{WN"�M���z�mk@��� q"N���O��畛5}���ܷ��K�p�/DL�IƦ~{,���>��M�λg�П��Uլv\6�23}���2�䢹������D� ���Ps�B�x�ך� � ����v���?AJ��p3�ܒ,��HA�p=�R���%l�r?/���_&6|?�����y�	��F"��t'ZU���@A��h*���4=�Vi�&���ץC_t�H�S��������(QE�1���X��
���U���n`n�2��?-�}@�|3�����Ҝ%- *�T�_ZJ��mK<I�k�tJ���z�Y5�Ll$�'2�ۧ1\sHd_<��d�4'}�L;Rrٔfc�W؂D�Ȉ��VTd&�\��y���&�X��pz�;c�aX�mc9��K]윾�R�@J�C�Nq	ڀN����$
-���!��ݵ�w;.Y�i1�g���㳴�r���Ӭ�5`ݰ^��M�4J6�:���ܦ����7ӟ���[�]=ǆ�S�Yl�R�8��n���؞WVM]p�,�f<�Z(���ͼv+��K�i3w��|&/���.�xf�dƽ�B5�ϱ�Jm�T�&\ݽ'��ǎ9���<ճFB.�u�+!@�)�\�o�Ǿ��?�����8�8�Y�l��,1�}�)�S%AF6��d0e"s���B����z9@��E%!BQ�AudJ@��4%*���h�6eT����@�%2�H�4��nFb��pL���LYGSRY)T�'EB���:=LOL�u�ڡmm,X�"�L��n!
Rd����U#��6�_x���P^
��|��^�������C˛@��*������C �&��ђU�׸Y�����;�<���Kx}�������Ղϱy��ib��������[�7��X��m�GZaH�n��f$��G�Rf]��)-8yT���Q��Y�,P���P����#�C6���#q��ڦ*����Wa1���ی�Ԉ?K�sB>��Z)Ro�\>$��WIw.�����}�~K��˾VCv���N�)4�[�m�}�S}>*��\/WQv�J�B��IW��Vla��h2���� ��Е���*)��Dl|6��5Z����׀BDD2�<�3��R0�I�*�����\��1]Il���IuJwU%OAeM&���bRz��噋Hݸ����4��&�gt	7�D����u߶�����bp��iM�rh|Ԛfϲhi��R��0�p0hJ 9��3��,B�0t-����e�zV6$j�˴��ꝥc��#!(�ۚ�M����z�*��D��b���,	
�#>ҹ������o{��3)���?E�ำ�,�áH�<Sk����]G|��e�K�F����ڰE}2x�_�Kh���2�A�hի��i��CH���"I��UH�QAE��,X�PJ�fMe�m����8�͔Fw7	r7ѳ].x,�=��D�󋎂�"�l��o�>��:*��Úq�� �Y	����L2���\�������Ҭ{j[�F�kԤn%���TrW�&t�.T2���Jђ4	��P��p���f�P�$�[���u�݁*7$����*Ɛ
U���n��n(�-����8�Xb���}֖�;�[��NR#���Q&t�"�Ns����G�DI�_d��4���dZ���?�\��Sk���)�����X4��Ffj�3��M
�'8;� �4���(p��2GW����J�2��%��'ObR>�i��ݜ�I ���Biv���"!�x��f�l�۠��d�71��[@���� Ħ��hi�����f,^��M�Ԥ��r�ƶ�n��M2�n�;�<vH��+���O����L��5���~Cm�~&E�{.�&������|��9���~��?��$��:ϵ�a���4�i>�g���G���>���"��w����D3 {�;:<Z�v�~Ռpp|No�ԸJ!��������K��W[%�s7���~���E��fɣ��-��8�恜�ҏ��Oc,ܖ:�`��%,A�A��l�Xwz�!Xz�X��G� �kQ�����_	"D���cT=Z-���������~8��(O�s���[��C	A'+�I�q��cZ]8�\'j���m3:�1M4�w����%��I���(��&{E�vdf�<���o{d���]��i����&<�-lÚE�1��J'H��l���Y-�H��H�fu��Mi�*R���MX�^��EAR��N�#\D�g�f��?z��n�������(k�g�f�LAm�ro�zBO����
��%զ�I(Q�SY�f���)��ĥv3�����~:��\�mn5D#b�07v��;�{{�jЬa���M�D�Ƭ<;ߒ"c���բA�0�dIʟ8�&�׳�xb�<��W�KB��p4Cŭ�ۇ�ۤ'���W�\�c��
��1Ǩe��[{�?eSH�b1�2�[�zޑ�I����-.�w�����D�n DL��|�Ie (���@Y��i�$uz�On "����=e�1����6�U$ML	�w},��5vlv��.w�u@dc+��D]�)����ҧ�TZbZ!���9/%���M�7|6c�X�Mkey��q�6��/)�RB<ˠ�G$.�4�!�Z�¬�4uDfQ�T���݄.g�"ܙU�e�q�p�5���dՆ�X�9DC��]w�vu��'���c���;�%cU��&�ɢ���7�.g���A��Nj�A�]z�v}�x��R/v����c���do>ڦ`"��v�mu[���U;P�v��v'fѭD��(�J�(��ׂ���VGzmx�bl�y�9܊Y��
�=��a"H�Iv����§�<����=��^�����l{�xk�p=��O�A��)�~_X��A���z����8��z[oM����������"@���g�0$)9�݆��dME��J��a#�����3`�-�&L�5��q]m~F��jKz	XC���'�8b89I,��T�@䐟0{`�l]�m:x݋�S�=
�×ݹ2�;K�K��|�)�_%��1�4N��wY!�9�����	'p��$4�Α�}d�hK��Pаa��qUW�/��z�~)�*�o�"pBh9�qT����Y�6,�`ĺ��/�L=M���Z���n�@�!tǽh����w�UM�JP���[���C���<J�t�kKԼ߁�X� r��+�ab8\$X40�����X5U�#�$�5T\d�E�����$�
4}���yՔ*�ARb�zP���b�� Ut�����ig}���Q��R�K\ՠz�m�|����}�bȏ��Ω�g�Ƅ�� '�1)Ӻ��`B�Ql`ؘ��#1���\	�U,�*�A2Ef#)�Q@_JM(��om�3s���s���[CmȘ�=��*����4�ب�'.�$S{��D�������=s��$�^��T���f&gvҘ�	�F.F���V@�T�ۜ�KZ�A鶡�� �������e%B�R0���˞�$�UU��.m��s�v2��D�Y�l4��J��J����0.|XX�!lu��e���9� ,��;j��BaSZo�l���g~=�X8Pܗ���U@�K�1��Ĺ1*xho+A���D��"�Ѓ�Ź��b(��KY���"��cV�"���r��5�2�5w~sް.@rי���¶ gd��	���J��:kmˑ��A�Py3��f�sB)��L~t�a�F��|�ZK�{Ɵ�}�*Y%rI�*
���w�[a/�n}%M��4x.ֵ=��Vɠ�rI2��d�%A@ �z!��g`N21b&�h̦���=V�!	��ֈ�g�	�`�v�|c+�զ�Y������ݨ�- h" �bH�Y��r��얙Yy՘E^�**aQe��31I-��Ғ0���1T�f���,D!P|��DD��3k!6���x�	�c��.9����H>I��Bh�(&�  {�*|�j_NF��V��89�@k]@
i��[�����2T��y�A-b�-�YEM s�L�3���;�0Ճ	� )E�QJ��{��B�O �8X=ɗ��}Y
f�,a�	؝�Y,I���M[�搅�7�;�Yղi�;l�k�����F�b�
&��Y-�`�عu�N�p�p����<e������3Rd'T&�0H��1�!^��[�F��NTߴ�]
 RPM0'T����m��Zʴ*-����.�,رm`"�c�0�[A6�I�P���A.9��;,l��A����Ş��G&6�Hض$�H��
�N"]m���A"}qJm�*�Tf���;P�U�|w.Ĵm���ZJ���}�\Ms����Je�L� 0#�$n��_8�dvP��]7��&�P��PB��K!L/��/z5��Q<�Hpi�r�ډ�`j+@���Y�)~��[���vX�o���-��(�\l���� ��ˆZ��Ui7�s�Z�Hvys�+>f_��9�:�ҩzr�A2{J�R.��թY#i"%($�;�P	�����	��-Ebj��I>(�j(��LB�P��\A��R7�@�<iƸ]�d�he��}����l�=.�ρP"b̭����3"����ψCD�{��5	z�R��r/�p.Vt/끐D2(�7�*�ILz�v��*��s1�� db$�jArc..ڠP��)ԋ�A"z������Y�G�R�6�B�hl.ngv��V�9:�7�6v9;J����m�c0�u�u�r���n��6�D�PwN(*�
�
@2:rϷ��e�{��)f4Nن]ϴ���4pJ#a!R�P̪^$��o8O:�4���˳���@ZwF�̪�@��YT�����uŮ��q'Ң�n�hO���-���m.�I5��ݖ�
@Q+���Y����1E���y�6tn�.W�M g7��@E$2XD)&-�Z���С��ib �c!`2�zz5�%�1!�Xb�rQ�.K&�7�h�]X�K�ScGY�l{D���BR�6� �=yN2���Ɛ�d�B��u!�>��0�x�Jk �"����~ӧ��f&~�Q�p��H�$ �E�2{ui��D��$|�.,�������Y���a�����u�H��l��!��6�"RL�4�����v� p�B�{�Q�O��Ϲ�h4~Qb���IR��J��zlQR[����1�[�X�A��4�p��1C:+m�$���i9��Id2�$S��6F������ǂX<�'�~�؂�����>��~.��V�@��_�4ELW"��³Q�_H��خ���[��MCsD�栔D�D�z/)g.h�p��t&5L�.��2 <%g�a6�']�*����L�ap;r�D�#�P��Q�1�����iBT�sQA`R/xķ�-GJF�2eJ��)�l(.�"D4�`�MU�������F�%̎!`���A�M�H�b�M	�4�%���a�]���@~t:5��T3�^�A�p��`��/�P�a�	$$b(u����� 6`h�A	!URUt�e�,P��9\���n.I��Ji~�4XYK���{@!N<J��\��}$0s�"qH���QpXENgr�b�D���ƫy�zPh��]h+��Y�+xk(��~^3Qq2�!QZ�!;a�6�q�	�CL7��߅�A[@jE��`�J�]�w�a��5��%@@=DT8i4 �h&�7�(\�!�H#d/�u0�=6(WEs�C���5��hB�
�����׼�����pȘQ�'<�s�	���#Y������'�p7?��������=�@��3{�,��8�`�0y�G���qe� ���5BֲNP�5D�=�5�\�6�ÃBA*M�؊�"�n(��aq�Z�οϦ~���d��e9um�J�a����q�����z�kA�1lm�t�¸��ޱ����!{����i���?~E�/����6���}q�1�Ca)7E�AFְ/���K��UgB�@;&�I��N�Ƙĕ�$.L\��wH�@�1	�gO1��Ū��[Lb���0$0�CXo*�B�|l.%8%������{�\��B�=x_�e��m&��܊�>�;�����A@/�`�"��T�z�M� ��{HFJ�������z�W�T���x�!#���M�<ɂ�����x��Fw��~�UA35�fjV���#�Un�E�5,V!�$��1�k&�(�p�;1�b騪����4��ˠN�ދ¨4�<�!G8��bZ�5�?!(\6� i6a���:; ������(R�٩�2*�^�f�5:o�N��oJ����yaU��mV�G�n��B��0�AOfp1���iaQ�EC!m��/�l��������Xk�M��` �q���R����D',�^��$5��0g���x�`{4���l���h�Xl�$A�`Yo����>Xj� 
a�"�k*��i&Tx@�T#l�@Bċ�g���V4��m�'֒ɋ��:ѿYs�ʌ��\�1��J$D\�QD�2^�;a��E`t"��>ŭ��KW����/#&�ؗ2|fײd���� ���� cf�B|T)B-ݝ���(��4�-�Z;.Q��!��l�1[��T�$P� X�0�(*_BE�":J�Q*mh����.֘�?ϐr�0\�j�"��r,q���#>����"�t0�Vo�02�Hs�s�Z�"�6޸�=Z��G�͉,�FT�t�1p-8�mw"o9��I���RrAep�
��{0���r��H$CXh�R|���Ikd؊,&l8@��(յD ���QF�J,Ɉ�-\�,)r��N(M�L E��k^N� ��a� 5�D1q�$�����@b^b�x�P&[t ��Ed`���Թ���*�TТ=b�'I%����ke16B2�݁�	W��b��u���ր
a��
�[�����=����UhhO�(o#�n@��2�Bm*�E\m9E�����5I)��#��!h�n�'��C�7Lt���[et��֋2gqǔ�5�T�s�����C3;�(Z\��1q8U�.
[�V,��B�\�4H2[50�53|Q���m����%�@S{!�b�m��ς21;�� ��GH��M�ӡ�s�,�����s�c����}-L#;$l����t/Br/}P�cEa5A7�M��'j5��W|Fb�*5%Rn��NLc['<05��/���(�:ٯ=�D�,&P�v$��4і�~2�h�WݜG����U�u$5FTB���߶ł�JS�X/��. b�b> 5$�R?�/�=���h2;V���f�H+��v!s���*1,�Pz��|B�z5?�I3�n���6�T�CLduҩ\�I��k�h-T�C���aUhU���`I��t��P�H�d�
�t*f�.���c��9c�	(�C�7a�R�;I�ZQ`ވց����5��tq���*_X�R|N�gp�bG�Q�^�+�����T�f�#�ؚm���|�#�%( ���Cȃ��[�Ǳ�~��>��C
��,̐�\oﳏ;��p�R:8���72L���4 l���V�l�9y�����j��O��*�����?����R��	��o����o�O���T�%E?�����"�(H3O�A�