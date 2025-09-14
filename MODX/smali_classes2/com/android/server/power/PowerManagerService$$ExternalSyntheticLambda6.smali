.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;->f$2:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda6;->f$2:J

    .line 6
    .line 7
    sget-object p0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string/jumbo p0, "status"

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string/jumbo p0, "time"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object p0, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
