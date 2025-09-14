.class public final synthetic Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;IZLjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$3:I

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$1:Z

    iput-object p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/net/EthernetManager;ZI)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-object p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$2:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$1:Z

    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$3:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;ZLjava/lang/String;I)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$1:Z

    iput-object p3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$2:Ljava/lang/Object;

    iput p4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Landroid/net/EthernetManager;

    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$1:Z

    .line 13
    .line 14
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$3:I

    .line 15
    .line 16
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setEthernetState$63(Landroid/net/EthernetManager;ZI)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 24
    .line 25
    iget v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$3:I

    .line 26
    .line 27
    iget-boolean v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$1:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$2:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Ljava/lang/String;

    .line 32
    .line 33
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setProKioskState$21(IZLjava/lang/String;)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$1:Z

    .line 43
    .line 44
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$2:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    iget p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$$ExternalSyntheticLambda22;->f$3:I

    .line 49
    .line 50
    sget-object v3, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->lambda$setAutoRotationState$58(ZLjava/lang/String;I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
