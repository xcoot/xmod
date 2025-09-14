.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string/jumbo v0, "status"

    .line 2
    .line 3
    .line 4
    iget v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/content/Intent;

    .line 12
    .line 13
    sget-object v2, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 25
    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda5;->f$1:Landroid/content/Intent;

    .line 33
    .line 34
    sget-object v2, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 46
    .line 47
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
