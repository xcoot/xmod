.class public final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "settings change "

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string p2, "AdaptiveBrightnessLongtermModelBuilder"

    .line 18
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 23
    iget-object p2, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 25
    iget-object p1, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    const/4 p2, 0x0

    .line 31
    const/4 v0, -0x2

    .line 32
    const-string/jumbo v1, "screen_brightness_mode"

    .line 35
    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    move-result p1

    .line 39
    const/4 p2, 0x1

    .line 40
    if-ne p1, p2, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 44
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 46
    const/4 p1, 0x3

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 57
    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    .line 59
    const/4 p1, 0x2

    .line 60
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 67
    :goto_0
    return-void
.end method
