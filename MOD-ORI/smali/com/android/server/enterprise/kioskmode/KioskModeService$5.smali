.class public final Lcom/android/server/enterprise/kioskmode/KioskModeService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

.field public final synthetic val$adminUid:I

.field public final synthetic val$info:Lcom/samsung/android/knox/ContextInfo;

.field public final synthetic val$kioskPackage:Ljava/lang/String;

.field public final synthetic val$operation:I

.field public final synthetic val$token:J

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;IIIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$info:Lcom/samsung/android/knox/ContextInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$kioskPackage:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$userId:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$adminUid:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$operation:I

    .line 15
    .line 16
    iput-wide p7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$token:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$info:Lcom/samsung/android/knox/ContextInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$kioskPackage:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->cleanUpKioskMode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 11
    .line 12
    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$userId:I

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->wipeRecentTasks(I)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$userId:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->launchHomeActivity(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$adminUid:I

    .line 30
    .line 31
    iget v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$operation:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->broadcastKioskResult(III)V

    .line 35
    .line 36
    .line 37
    iget-wide v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$5;->val$token:J

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    sput-boolean v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    .line 43
    .line 44
    return-void
.end method
