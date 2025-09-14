.class public final synthetic Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "android.app.role.SMS"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;->mListener:Ljava/util/function/BiConsumer;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p1, p0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
