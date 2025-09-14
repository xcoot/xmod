.class public final Lcom/android/server/am/ServiceRecord$BindItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final caller:Landroid/app/IApplicationThread;

.field public final callingPackage:Ljava/lang/String;

.field public final connection:Landroid/app/IServiceConnection;

.field public final flags:J

.field public final instanceName:Ljava/lang/String;

.field public final isSdkSandboxService:Z

.field public final resolvedType:Ljava/lang/String;

.field public final sdkSandboxClientAppPackage:Ljava/lang/String;

.field public final sdkSandboxClientAppUid:I

.field public final sdkSandboxClientApplicationThread:Landroid/app/IApplicationThread;

.field public final service:Landroid/content/Intent;

.field public final token:Landroid/os/IBinder;

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;ZILjava/lang/String;Landroid/app/IApplicationThread;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$BindItem;->caller:Landroid/app/IApplicationThread;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$BindItem;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/ServiceRecord$BindItem;->service:Landroid/content/Intent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$BindItem;->resolvedType:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/am/ServiceRecord$BindItem;->connection:Landroid/app/IServiceConnection;

    .line 13
    .line 14
    iput-wide p6, p0, Lcom/android/server/am/ServiceRecord$BindItem;->flags:J

    .line 15
    .line 16
    iput-object p8, p0, Lcom/android/server/am/ServiceRecord$BindItem;->instanceName:Ljava/lang/String;

    .line 17
    .line 18
    iput-boolean p9, p0, Lcom/android/server/am/ServiceRecord$BindItem;->isSdkSandboxService:Z

    .line 19
    .line 20
    iput p10, p0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientAppUid:I

    .line 21
    .line 22
    iput-object p11, p0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p12, p0, Lcom/android/server/am/ServiceRecord$BindItem;->sdkSandboxClientApplicationThread:Landroid/app/IApplicationThread;

    .line 25
    .line 26
    iput-object p13, p0, Lcom/android/server/am/ServiceRecord$BindItem;->callingPackage:Ljava/lang/String;

    .line 27
    .line 28
    iput p14, p0, Lcom/android/server/am/ServiceRecord$BindItem;->userId:I

    .line 29
    .line 30
    return-void
.end method
