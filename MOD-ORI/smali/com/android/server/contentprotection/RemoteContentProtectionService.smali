.class public Lcom/android/server/contentprotection/RemoteContentProtectionService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mAutoDisconnectTimeoutMs:J

.field private final mComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/contentprotection/RemoteContentProtectionService;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IZJ)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.service.contentcapture.ContentProtectionService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    const/high16 p4, 0x400000

    .line 15
    .line 16
    :goto_0
    move v5, p4

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p4, 0x0

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    new-instance v7, Lcom/android/server/contentprotection/RemoteContentProtectionService$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    move v6, p3

    .line 28
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mComponentName:Landroid/content/ComponentName;

    .line 32
    .line 33
    iput-wide p5, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mAutoDisconnectTimeoutMs:J

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mAutoDisconnectTimeoutMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    .line 1
    check-cast p1, Landroid/service/contentcapture/IContentProtectionService;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "Connection status for: "

    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/contentprotection/RemoteContentProtectionService;->mComponentName:Landroid/content/ComponentName;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, " changed to: "

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    const-string/jumbo p0, "connected"

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string/jumbo p0, "disconnected"

    .line 27
    .line 28
    .line 29
    :goto_0
    const-string p2, "RemoteContentProtectionService"

    .line 30
    .line 31
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
