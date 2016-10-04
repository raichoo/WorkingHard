Len1: Len1.hs
	ghc -fforce-recomp -ddump-stg Len1.hs -ddump-to-file -dsuppress-all
	mv Len1.dump-stg Len1-unopt.dump-stg

Len2: Len2.hs
	ghc -fforce-recomp -ddump-stg Len2.hs -ddump-to-file -dsuppress-all
	mv Len2.dump-stg Len2-unopt.dump-stg

Len3: Len3.hs
	ghc -fforce-recomp -ddump-stg Len3.hs -ddump-to-file -dsuppress-all
	mv Len3.dump-stg Len3-unopt.dump-stg

Len1-opt: Len1.hs
	ghc -fforce-recomp -ddump-stg Len1.hs -ddump-to-file -dsuppress-all -O2 -o Len1-opt
	mv Len1.dump-stg Len1-opt.dump-stg

Len2-opt: Len2.hs
	ghc -fforce-recomp -ddump-stg Len2.hs -ddump-to-file -dsuppress-all -O2 -o Len2-opt
	mv Len2.dump-stg Len2-opt.dump-stg

Len3-opt: Len3.hs
	ghc -fforce-recomp -ddump-stg Len3.hs -ddump-to-file -dsuppress-all -O2 -o Len3-opt
	mv Len3.dump-stg Len3-opt.dump-stg

Fac.o: Fac.hs
	ghc -fforce-recomp -ddump-stg Fac.hs -ddump-to-file -ddump-asm -O2

all: Len1 Len2 Len3 Fac.o opt

opt: Len1-opt Len2-opt Len3-opt Fac.o

clean:
	rm *.dump-* *.o *.hi Len? Len?-opt
