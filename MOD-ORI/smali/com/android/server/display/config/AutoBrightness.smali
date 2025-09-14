.class public final Lcom/android/server/display/config/AutoBrightness;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public brighteningLightDebounceIdleMillis:Ljava/math/BigInteger;

.field public brighteningLightDebounceMillis:Ljava/math/BigInteger;

.field public darkeningLightDebounceIdleMillis:Ljava/math/BigInteger;

.field public darkeningLightDebounceMillis:Ljava/math/BigInteger;

.field public enabled:Ljava/lang/Boolean;

.field public luxToBrightnessMapping:Ljava/util/List;


# virtual methods
.method public final getLuxToBrightnessMapping()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/config/AutoBrightness;->luxToBrightnessMapping:Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method
