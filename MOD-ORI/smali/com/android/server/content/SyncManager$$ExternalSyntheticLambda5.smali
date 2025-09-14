.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManager;

.field public final synthetic f$1:Landroid/accounts/AccountAndUser;

.field public final synthetic f$10:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManager;Landroid/accounts/AccountAndUser;ILjava/lang/String;Landroid/os/Bundle;IJIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/content/SyncManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$1:Landroid/accounts/AccountAndUser;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$4:Landroid/os/Bundle;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$5:I

    .line 15
    .line 16
    iput-wide p7, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$6:J

    .line 17
    .line 18
    iput p9, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$7:I

    .line 19
    .line 20
    iput p10, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$8:I

    .line 21
    .line 22
    iput p11, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$9:I

    .line 23
    .line 24
    iput-object p12, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$10:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onReady()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$1:Landroid/accounts/AccountAndUser;

    .line 2
    .line 3
    iget-object v6, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$4:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/content/SyncManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    .line 11
    .line 12
    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    iget v4, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$2:I

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    .line 18
    .line 19
    iget v7, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$5:I

    .line 20
    .line 21
    iget-wide v8, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$6:J

    .line 22
    .line 23
    iget v11, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$7:I

    .line 24
    .line 25
    iget v12, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$8:I

    .line 26
    .line 27
    iget v13, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$9:I

    .line 28
    .line 29
    iget-object v14, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda5;->f$10:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IJZIIILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
