.class public final synthetic Lcom/android/server/display/brightness/clamper/BrightnessPowerClamper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 3
    invoke-static {p1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
