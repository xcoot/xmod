.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Lcom/android/server/am/ContentProviderConnection;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ContentProviderConnection;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/ContentProviderConnection;

    .line 8
    iput-boolean p3, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$2:Z

    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$3:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ContentProviderHelper;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/am/ContentProviderConnection;

    .line 5
    iget-boolean v2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$2:Z

    .line 7
    iget-boolean p0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda3;->f$3:Z

    .line 9
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/am/ContentProviderHelper;->handleProviderRemoval(Lcom/android/server/am/ContentProviderConnection;ZZ)V

    .line 12
    return-void
.end method
