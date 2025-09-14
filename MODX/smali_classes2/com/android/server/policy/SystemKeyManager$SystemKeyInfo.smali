.class public final Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final keyCode:I

.field public final keyPressOld:Z

.field public final press:I


# direct methods
.method public constructor <init>(IILandroid/content/ComponentName;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    .line 7
    iput p2, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    .line 8
    iput-object p3, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    .line 4
    iput-object p2, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "keyCode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyCode:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->keyPressOld:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, " keyPressOld"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, " press="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->press:I

    .line 29
    .line 30
    invoke-static {v1}, Lcom/android/server/policy/SystemKeyManager;->keyPressToString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_0
    const-string v1, " componentName="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/policy/SystemKeyManager$SystemKeyInfo;->componentName:Landroid/content/ComponentName;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method
