.class public final synthetic Lcom/android/server/content/SyncManagerConstants$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/SyncManagerConstants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/SyncManagerConstants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncManagerConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/SyncManagerConstants;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/content/SyncManagerConstants$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/SyncManagerConstants;

    .line 3
    iget-object v0, p0, Lcom/android/server/content/SyncManagerConstants;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "sync_manager_constants"

    .line 12
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/server/content/SyncManagerConstants;->refresh()V

    .line 23
    return-void
.end method
