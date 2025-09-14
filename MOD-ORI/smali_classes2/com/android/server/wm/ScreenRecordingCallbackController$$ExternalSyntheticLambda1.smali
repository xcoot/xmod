.class public final synthetic Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;->f$0:Landroid/media/projection/MediaProjectionInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;->f$0:Landroid/media/projection/MediaProjectionInfo;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionInfo;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget-object p0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 12
    .line 13
    if-ne p1, p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
