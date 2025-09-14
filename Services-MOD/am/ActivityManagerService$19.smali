.class public final Lcom/android/server/am/ActivityManagerService$19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$app:Landroid/os/IBinder;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

.field public final synthetic val$tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$19;->val$callingUid:I

    .line 8
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$19;->val$callingPid:I

    .line 10
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$19;->val$app:Landroid/os/IBinder;

    .line 12
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$19;->val$tag:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$19;->val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 3
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$19;->val$callingUid:I

    .line 5
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$19;->val$callingPid:I

    .line 7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$19;->val$app:Landroid/os/IBinder;

    .line 9
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$19;->val$tag:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$19;->val$crashInfo:Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->handleApplicationWtfInner(IILandroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/android/server/am/ProcessRecord;

    .line 16
    return-void
.end method
