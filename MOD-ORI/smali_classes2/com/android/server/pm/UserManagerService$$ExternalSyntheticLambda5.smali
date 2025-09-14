.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/content/IntentSender;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$1:I

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$2:Z

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$3:Landroid/content/IntentSender;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$1:I

    .line 9
    .line 10
    iget-boolean v2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$2:Z

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$3:Landroid/content/IntentSender;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/pm/UserManagerService;

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$1:I

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$2:Z

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$3:Landroid/content/IntentSender;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZLandroid/content/IntentSender;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
