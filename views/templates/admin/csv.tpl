{foreach from=$megrendelok item=megrendelo}
{*Csomag tipusa, D norm�l, D-COD ut�nv�tes;*}{if strpos($megrendelo.order->payment, 'COD') !== false}D-COD{else}D{/if};{*S�ly;*}{$megrendelo.weight|escape:'htmlall':'UTF-8'};{*Ut�nv�t �sszeg;*}{if strpos($megrendelo.order->payment, 'COD') !== false}{$megrendelo.order_invoice->total_paid_tax_incl|ceil}{/if};{*Ut�nv�t ref.;*};{*Referencia;*};{*C�mt�rrzs id;*};{*C�gn�v;*}{$megrendelo.customer->firstname|to_charset:'ISO-8859-2'} {$megrendelo.customer->lastname|to_charset:'ISO-8859-2'};{*N�v;*}{$megrendelo.customer->firstname|to_charset:'ISO-8859-2'} {$megrendelo.customer->lastname|to_charset:'ISO-8859-2'};{*C�m 1;*}{$megrendelo.address->address1|to_charset:'ISO-8859-2'};{*C�m 2;*}{$megrendelo.address->address2|to_charset:'ISO-8859-2'};{*Orsz�gk�d;*}H;{*irsz;*}{$megrendelo.address->postcode|escape:'htmlall':'UTF-8'};{*v�ros;*}{$megrendelo.address->city|to_charset:'ISO-8859-2'};{*telefon;*}{$megrendelo.address->phone_mobile|escape:'htmlall':'UTF-8'};{*fax;*};{*email;*}{$megrendelo.customer->email|escape:'htmlall':'UTF-8'};{*megjegyz�s*};{*mobilsz�m*}{$megrendelo.address->phone_mobile|escape:'htmlall':'UTF-8'};
{/foreach}
