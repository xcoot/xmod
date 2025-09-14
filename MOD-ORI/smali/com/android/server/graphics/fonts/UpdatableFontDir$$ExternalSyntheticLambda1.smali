.class public final synthetic Lcom/android/server/graphics/fonts/UpdatableFontDir$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
