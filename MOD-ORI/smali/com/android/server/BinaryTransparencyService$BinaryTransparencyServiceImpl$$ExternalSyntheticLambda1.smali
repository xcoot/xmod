.class public final synthetic Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;->f$1:Landroid/os/Bundle;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isUpdatedSystemApp()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Preload "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, " at "

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, " has likely been updated."

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "TransparencyService"

    .line 66
    .line 67
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    invoke-virtual {v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;->collectAppInfo(Lcom/android/server/pm/pkg/PackageState;I)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method
