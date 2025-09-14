.class public final Lcom/android/server/pm/OtaDexoptService$1;
.super Lcom/android/server/pm/Installer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$commands:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService$1;->val$commands:Ljava/util/List;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x21

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v3, :cond_1

    .line 31
    .line 32
    const-string v0, "!"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "Invalid argument while executing "

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0
.end method


# virtual methods
.method public final dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p7, 0x20

    if-nez v1, :cond_0

    .line 2
    const-string v1, "10 dexopt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    .line 3
    invoke-static {v0, p1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p3

    .line 5
    invoke-static {v0, p3}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p4

    .line 6
    invoke-static {v0, p4}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 7
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p6

    .line 8
    invoke-static {v0, p6}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 9
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p8

    .line 10
    invoke-static {v0, p8}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p9

    .line 11
    invoke-static {v0, p9}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p10

    .line 12
    invoke-static {v0, p10}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p11

    .line 13
    invoke-static {v0, p11}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 14
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 15
    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p13

    .line 16
    invoke-static {v0, p13}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v1, p14

    .line 17
    invoke-static {v0, v1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object/from16 v1, p15

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/pm/OtaDexoptService$1;->encodeParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    move-object v1, p0

    .line 19
    iget-object v1, v1, Lcom/android/server/pm/OtaDexoptService$1;->val$commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid OTA dexopt call for secondary dex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
