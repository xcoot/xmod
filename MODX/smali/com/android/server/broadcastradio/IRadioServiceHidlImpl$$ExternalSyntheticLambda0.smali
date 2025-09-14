.class public final synthetic Lcom/android/server/broadcastradio/IRadioServiceHidlImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 3
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    .line 6
    move-result p0

    .line 7
    return p0
.end method
