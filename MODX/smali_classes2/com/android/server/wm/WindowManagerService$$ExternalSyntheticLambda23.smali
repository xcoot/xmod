.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Lcom/android/server/wm/WindowManagerService;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lcom/android/server/policy/WindowManagerPolicy;

.field public final synthetic f$5:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

.field public final synthetic f$7:Ljava/util/function/Supplier;

.field public final synthetic f$8:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>([Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$0:[Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$2:Lcom/android/server/input/InputManagerService;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$3:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$4:Lcom/android/server/policy/WindowManagerPolicy;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$5:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$7:Ljava/util/function/Supplier;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$8:Ljava/util/function/Function;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$0:[Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$2:Lcom/android/server/input/InputManagerService;

    .line 6
    .line 7
    iget-boolean v4, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$3:Z

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$4:Lcom/android/server/policy/WindowManagerPolicy;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$5:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$6:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$7:Ljava/util/function/Supplier;

    .line 16
    .line 17
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->f$8:Ljava/util/function/Function;

    .line 18
    .line 19
    new-instance p0, Lcom/android/server/wm/WindowManagerService;

    .line 20
    .line 21
    move-object v1, p0

    .line 22
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    aput-object p0, v0, v1

    .line 27
    .line 28
    return-void
.end method
