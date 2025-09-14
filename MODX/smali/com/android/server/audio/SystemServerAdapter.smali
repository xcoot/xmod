.class public final Lcom/android/server/audio/SystemServerAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public broadcastStickyIntentToCurrentProfileGroup(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 9
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    .line 12
    move-result-object p0

    .line 13
    array-length v0, p0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_0

    .line 17
    aget v2, p0, v1

    .line 19
    invoke-static {p1, v2}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
