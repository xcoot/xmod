.class public final Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;

    .line 3
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, "bedtime_mode"

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper$1;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeClamper;

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 21
    move v1, v0

    .line 22
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mIsActive:Z

    .line 24
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamper;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 26
    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    .line 29
    return-void
.end method
