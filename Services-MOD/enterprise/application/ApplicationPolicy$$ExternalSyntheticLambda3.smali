.class public final synthetic Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    .line 12
    iput-object p5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 3
    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$$ExternalSyntheticLambda3;->f$4:Ljava/lang/String;

    .line 11
    check-cast p1, Ljava/lang/Long;

    .line 13
    check-cast p2, Ljava/util/Map;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 21
    move-result-wide v4

    .line 22
    long-to-int v4, v4

    .line 23
    const v5, 0x186a0

    .line 26
    div-int/2addr v4, v5

    .line 27
    if-ne v1, v4, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 32
    move-result-wide p0

    .line 33
    long-to-int p0, p0

    .line 34
    iget-object p1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    if-eqz p0, :cond_1

    .line 42
    new-instance p1, Lcom/samsung/android/knox/application/AppControlInfo;

    .line 44
    invoke-direct {p1}, Lcom/samsung/android/knox/application/AppControlInfo;-><init>()V

    .line 47
    iput-object p0, p1, Lcom/samsung/android/knox/application/AppControlInfo;->adminPackageName:Ljava/lang/String;

    .line 49
    new-instance p0, Ljava/util/ArrayList;

    .line 51
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Ljava/util/Collection;

    .line 57
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    iput-object p0, p1, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    .line 62
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string p0, ": userId("

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string p0, ") != adminUserId("

    .line 84
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string p0, ")"

    .line 92
    const-string p2, "ApplicationPolicy"

    .line 94
    invoke-static {p1, p0, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_0
    return-void
.end method
