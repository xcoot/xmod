.class public final synthetic Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/StringJoiner;


# direct methods
.method public synthetic constructor <init>(Ljava/util/StringJoiner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;->f$0:Ljava/util/StringJoiner;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;->f$0:Ljava/util/StringJoiner;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 10
    return-void
.end method
