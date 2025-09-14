.class public final synthetic Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/Vpn;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/connectivity/Vpn;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/net/ConnectivityManager;->setVpnDefaultForUids(Ljava/lang/String;Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
