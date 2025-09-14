.class public final synthetic Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkFactoryLegacyImpl;

.field public final synthetic f$1:Landroid/net/NetworkRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/net/NetworkRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkFactoryLegacyImpl;

    .line 6
    iput-object p2, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkRequest;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$0:Landroid/net/NetworkFactoryLegacyImpl;

    .line 3
    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$$ExternalSyntheticLambda0;->f$1:Landroid/net/NetworkRequest;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v2, "releaseRequestAsUnfulfillableByAnyFactory: "

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    iget-object v2, v0, Landroid/net/NetworkFactoryLegacyImpl;->mParent:Landroid/net/NetworkFactory;

    .line 25
    invoke-virtual {v2, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 28
    iget-object v0, v0, Landroid/net/NetworkFactoryLegacyImpl;->mProvider:Landroid/net/NetworkProvider;

    .line 30
    if-nez v0, :cond_0

    .line 32
    const-string p0, "Ignoring attempt to release unregistered request as unfulfillable"

    .line 34
    invoke-virtual {v2, p0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/NetworkProvider;->declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V

    .line 41
    :goto_0
    return-void
.end method
