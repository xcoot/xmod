.class public final synthetic Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 3
    check-cast p1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 5
    iget-object p1, p1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method
