.class public final Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDarkeningRateRatio:I

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final handleSettingsChangedLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "darkening_rate_ratio"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v1, "handleSettingsChangedLocked: mDarkeningRateRatio="

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    .line 31
    .line 32
    const-string v1, "AdaptiveBrightnessAdvancedSettings"

    .line 33
    .line 34
    invoke-static {v0, p0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
