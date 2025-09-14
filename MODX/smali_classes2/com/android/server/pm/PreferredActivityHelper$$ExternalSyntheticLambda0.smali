.class public final synthetic Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PreferredActivityHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PreferredActivityHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PreferredActivityHelper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PreferredActivityHelper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/pm/PreferredActivityHelper$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, v0, Lcom/android/server/pm/PreferredActivityHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lcom/android/server/pm/BroadcastHelper;->sendPreferredActivityChangedBroadcast(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
