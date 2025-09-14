.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/UserLevelState;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/UserLevelState;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/apphibernation/UserLevelState;

    .line 6
    iput p2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/apphibernation/UserLevelState;

    .line 3
    iget p0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda6;->f$1:I

    .line 5
    iget-object v1, v0, Lcom/android/server/apphibernation/UserLevelState;->packageName:Ljava/lang/String;

    .line 7
    iget-boolean v0, v0, Lcom/android/server/apphibernation/UserLevelState;->hibernated:Z

    .line 9
    const/16 v2, 0x172

    .line 11
    invoke-static {v2, v1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZ)V

    .line 14
    return-void
.end method
