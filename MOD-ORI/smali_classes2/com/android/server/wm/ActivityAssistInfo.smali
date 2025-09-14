.class public final Lcom/android/server/wm/ActivityAssistInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityToken:Landroid/os/IBinder;

.field public final mAssistToken:Landroid/os/IBinder;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mTaskId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mActivityToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mAssistToken:Landroid/os/IBinder;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 13
    .line 14
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 15
    .line 16
    iput v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mTaskId:I

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/wm/ActivityAssistInfo;->mComponentName:Landroid/content/ComponentName;

    .line 21
    .line 22
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 23
    .line 24
    iput p1, p0, Lcom/android/server/wm/ActivityAssistInfo;->mUserId:I

    .line 25
    .line 26
    return-void
.end method
