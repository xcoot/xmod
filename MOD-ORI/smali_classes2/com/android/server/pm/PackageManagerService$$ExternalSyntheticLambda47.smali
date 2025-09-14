.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/pm/PackageManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda47;->f$2:I

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 10
    .line 11
    const-class v2, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 12
    .line 13
    invoke-interface {v0, v2}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/apphibernation/AppHibernationService$LocalService;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    .line 22
    .line 23
    invoke-virtual {v0, v1, p0}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
