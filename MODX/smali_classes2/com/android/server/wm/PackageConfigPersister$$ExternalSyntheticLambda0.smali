.class public final synthetic Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PackageConfigPersister;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PackageConfigPersister;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PackageConfigPersister;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PackageConfigPersister;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mName:Ljava/lang/String;

    .line 11
    .line 12
    iget p2, p2, Lcom/android/server/wm/PackageConfigPersister$PackageConfigRecord;->mUserId:I

    .line 13
    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->removePackage(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
