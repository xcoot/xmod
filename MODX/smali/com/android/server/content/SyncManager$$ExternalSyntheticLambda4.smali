.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;

.field public final synthetic f$1:Landroid/accounts/AccountAndUser;

.field public final synthetic f$10:I

.field public final synthetic f$11:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/Bundle;

.field public final synthetic f$6:I

.field public final synthetic f$7:J

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;IILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/content/SyncManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$1:Landroid/accounts/AccountAndUser;

    .line 8
    iput p3, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$2:I

    .line 10
    iput p4, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$3:I

    .line 12
    iput-object p5, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$5:Landroid/os/Bundle;

    .line 16
    iput p7, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$6:I

    .line 18
    iput-wide p8, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$7:J

    .line 20
    iput p10, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$8:I

    .line 22
    iput p11, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$9:I

    .line 24
    iput p12, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$10:I

    .line 26
    iput-object p13, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$11:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/content/SyncManager;

    .line 3
    iget-object v1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$1:Landroid/accounts/AccountAndUser;

    .line 5
    iget v2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$2:I

    .line 7
    iget v3, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$3:I

    .line 9
    iget-object v4, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$5:Landroid/os/Bundle;

    .line 13
    iget v6, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$6:I

    .line 15
    iget-wide v7, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$7:J

    .line 17
    iget v10, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$8:I

    .line 19
    iget v11, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$9:I

    .line 21
    iget v12, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$10:I

    .line 23
    iget-object v13, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda4;->f$11:Ljava/lang/String;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    const-string/jumbo p0, "booleanResult"

    .line 33
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 39
    iget-object v1, v1, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 41
    const/4 v9, 0x1

    .line 42
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method
