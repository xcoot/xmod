.class public final Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUserSwitching(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->updateSettingScreenOffTimeout(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
