.class public final synthetic Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IServiceCreator;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, "addLazySystemService : "

    .line 7
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string v0, "EnterpriseService"

    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/os/IBinder;

    .line 28
    return-object p0
.end method
