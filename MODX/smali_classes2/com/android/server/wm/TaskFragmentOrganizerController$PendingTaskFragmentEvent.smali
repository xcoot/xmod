.class public final Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivity:Lcom/android/server/wm/ActivityRecord;

.field public mDeferTime:J

.field public final mErrorCallbackToken:Landroid/os/IBinder;

.field public final mEventType:I

.field public final mException:Ljava/lang/Throwable;

.field public final mOpType:I

.field public final mOtherActivity:Lcom/android/server/wm/ActivityRecord;

.field public final mTask:Lcom/android/server/wm/Task;

.field public final mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public final mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

.field public final mTaskFragmentToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(ILandroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/Throwable;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mEventType:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentOrg:Landroid/window/ITaskFragmentOrganizer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mException:Ljava/lang/Throwable;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mOtherActivity:Lcom/android/server/wm/ActivityRecord;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mTask:Lcom/android/server/wm/Task;

    .line 21
    .line 22
    iput p10, p0, Lcom/android/server/wm/TaskFragmentOrganizerController$PendingTaskFragmentEvent;->mOpType:I

    .line 23
    .line 24
    return-void
.end method
