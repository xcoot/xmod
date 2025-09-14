.class public final Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/apphibernation/AppHibernationService$Injector;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field public final mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    new-instance p1, Lcom/android/server/apphibernation/UserLevelHibernationProto;

    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$InjectorImpl;->mUserLevelHibernationProto:Lcom/android/server/apphibernation/UserLevelHibernationProto;

    .line 19
    return-void
.end method
