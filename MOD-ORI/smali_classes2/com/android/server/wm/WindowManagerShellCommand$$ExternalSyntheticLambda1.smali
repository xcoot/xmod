.class public final synthetic Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wm/AppCompatConfiguration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatConfiguration;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatConfiguration;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/AppCompatConfiguration;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_2
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_3
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_4
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_5
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_6
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_7
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_8
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_9
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
