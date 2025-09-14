.class public final synthetic Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/util/ArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    .line 3
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/util/ArrayList;

    .line 5
    check-cast p1, Ljava/lang/Long;

    .line 7
    check-cast p2, Landroid/accounts/Account;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 19
    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_1
    return-void
.end method
