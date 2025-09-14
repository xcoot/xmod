.class public final synthetic Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceConfig;

.field public final synthetic f$1:Landroid/app/smartspace/SmartspaceSessionId;

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/smartspace/SmartspaceConfig;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;->f$1:Landroid/app/smartspace/SmartspaceSessionId;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/app/smartspace/SmartspaceConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;->f$1:Landroid/app/smartspace/SmartspaceSessionId;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/smartspace/SmartspaceManagerService$SmartspaceManagerStub$$ExternalSyntheticLambda1;->f$2:Landroid/os/IBinder;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/smartspace/SmartspacePerUserService;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/smartspace/SmartspacePerUserService;->onCreateSmartspaceSessionLocked(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
