.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mRealCoverType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final broadcastCoverAttachStatus(Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    .line 5
    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v1, "com.samsung.android.intent.action.COVER_ATTACH_CHANGED"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "attach"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string/jumbo p1, "real_cover_type"

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mRealCoverType:I

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string p1, "android"

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverBroadcaster;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
