.class public final Lcom/android/server/hdmi/HdmiCecController$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 3
    const/4 p0, 0x5

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 7
    move-result p1

    .line 8
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method
