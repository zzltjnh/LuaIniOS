function layout_v(dir)
	bh = 0.19;
	linegap = 0.05;
	top = linegap;
	
	gap = 0.01
    for i=1, 9 do
		b = addtxtb(kbview, tostring(i),gap, top, 0.08, bh);
		showbframe(b, 2);
		showbpopup(b, 1);
		gap = gap + 0.08+0.02;
    end
    b = addtxtb(kbview, "0",gap, top, 0.08, bh);
    showbframe(b, 2);
    showbpopup(b, 1);

	top = top + bh + linegap;
	
	gap = 0.03;
    b = addtxtb(kbview, "“”", gap, top, 0.1, bh);
    showbframe(b, 2);
	setbcolor(b, UIControlStateNormal, 0.7, 0.7, 0.7);
    gap = gap + 0.1 + 0.015;
    
	btns = { "＋", "-", "×", "/", "＝", "<", ">" };
	for i=1, 7 do		
		b = addtxtb(kbview, btns[i], gap, top, 0.09, bh);
		showbframe(b, 2);
		showbpopup(b, 1);
		gap = gap+ 0.09 + 0.013;
	end
	
    b = addtxtb(kbview, "BS", gap, top, 0.12, bh);
    showbframe(b, 2);
	setbcolor(b, UIControlStateNormal, 0.7, 0.7, 0.7);
	
	top = top + bh + linegap;
	gap = 0.03;
	btns = { "(", ")", ",", ".", ":", "$", "&", "%", "^"};
	for i=1, 9 do
		b = addtxtb(kbview, btns[i],gap, top, 0.09, bh);
		showbframe(b, 2);
		showbpopup(b, 1);
		gap = gap + 0.09+0.018;
	end
	
	top = top + bh + linegap;

	gap = 0.03;	
	bw = 0.153;
	b = addtxtb(kbview, "⨍",gap, top, bw, bh);
	showbframe(b, 2);
	gap = gap + bw + 0.02;
	b = addtxtb(kbview, "∑", gap, top, bw, bh);
	showbframe(b, 2);
	gap = gap + bw + 0.02;
	b = addtxtb(kbview, "空格", gap, top, 0.26, bh);
	showbframe(b, 2);
	gap = gap + 0.26 + 0.02;
	b = addtxtb(kbview, "➝", gap, top, bw, bh);
	showbframe(b, 2);
	gap = gap + bw + 0.02;
	b = addtxtb(kbview, "⬅︎", gap, top, bw, bh);
	showbframe(b, 2);
end


function layout(dir)
	if dir == UIInterfaceOrientationPortrait or dir == UIInterfaceOrientationPortraitUpsideDown then
	    setsize(kbview, dir, 1., .32);
	else
		setsize(kbview, dir, 1., .5);
	end
	layout_v(dir);
end