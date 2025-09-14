.class public final Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$SettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    iget-object p2, p1, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 8
    const-string/jumbo v0, "even_dimmer_min_nits"

    .line 11
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19
    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->mContentResolver:Landroid/content/ContentResolver;

    .line 21
    const-string/jumbo p2, "even_dimmer_activated"

    .line 24
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier$SettingsObserver;->this$0:Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;->recalculateLowerBound()V

    .line 6
    return-void
.end method
