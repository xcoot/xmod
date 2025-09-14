.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityToken:Landroid/os/IBinder;

.field public final mAppThread:Landroid/app/IApplicationThread;

.field public final mAssistToken:Landroid/os/IBinder;

.field public final mShareableActivityToken:Landroid/os/IBinder;

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mShareableActivityToken:Landroid/os/IBinder;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mUid:I

    .line 13
    .line 14
    return-void
.end method
