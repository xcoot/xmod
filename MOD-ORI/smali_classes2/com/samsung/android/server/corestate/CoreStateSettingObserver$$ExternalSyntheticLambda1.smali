.class public final synthetic Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/database/ContentObserver;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$2:Z

    .line 10
    .line 11
    iput-object p3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$3:Landroid/database/ContentObserver;

    .line 12
    .line 13
    iput p4, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$4:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$2:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$3:Landroid/database/ContentObserver;

    .line 8
    .line 9
    iget p0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    .line 11
    iget-object v0, v0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
