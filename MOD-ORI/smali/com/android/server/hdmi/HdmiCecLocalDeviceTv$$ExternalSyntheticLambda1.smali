.class public final synthetic Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    new-instance p0, Landroid/media/AudioDescriptor;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, v0, v1, p1}, Landroid/media/AudioDescriptor;-><init>(II[B)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method
